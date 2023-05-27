if(BIG2_BUILD_DOCS)
    find_package(Doxygen)

    if(DOXYGEN_FOUND)
        set(DOXYGEN_PROJECT_NAME "BIG2")
        set(DOXYGEN_OUTPUT_LANGUAGE "English")
        set(DOXYGEN_USE_MDFILE_AS_MAINPAGE "${CMAKE_CURRENT_SOURCE_DIR}/docs/home.md")
        set(DOXYGEN_LAYOUT_FILE "${CMAKE_CURRENT_SOURCE_DIR}/docs/layout.xml")
        set(DOXYGEN_DISABLE_INDEX "NO")
        set(DOXYGEN_GENERATE_TREEVIEW "YES")
        set(DOXYGEN_FULL_SIDEBAR "YES")
        set(DOXYGEN_RECURSIVE "YES")
        set(DOXYGEN_EXTRACT_ALL "YES")
        set(DOXYGEN_EXPORT_STATIC "YES")
        set(DOXYGEN_ENABLE_PREPROCESSING "YES")
        set(DOXYGEN_MACRO_EXPANSION "YES")
        set(DOXYGEN_MARKDOWN_SUPPORT "YES")
        set(DOXYGEN_EXPAND_ONLY_PREDEF "NO")
        set(DOXYGEN_SKIP_FUNCTION_MACROS "NO")
        set(DOXYGEN_PREDEFINED "BIG2_IMGUI_ENABLED=1")
        set(DOXYGEN_SHOW_FILES "YES")
        set(DOXYGEN_PROJECT_LOGO "${CMAKE_CURRENT_SOURCE_DIR}/press/logo-color.png")
        set(DOXYGEN_HTML_EXTRA_FILES)
        list(APPEND DOXYGEN_HTML_EXTRA_FILES "${CMAKE_CURRENT_SOURCE_DIR}/press/favicon.ico")

        set(DOXYGEN_HTML_EXTRA_STYLESHEET)
        list(APPEND DOXYGEN_HTML_EXTRA_STYLESHEET "${CMAKE_CURRENT_SOURCE_DIR}/external/doxygen-awesome-css/doxygen-awesome.css")
        list(APPEND DOXYGEN_HTML_EXTRA_STYLESHEET "${CMAKE_CURRENT_SOURCE_DIR}/external/doxygen-awesome-css/doxygen-awesome-sidebar-only.css")

        set(DOC_SOURCES)
        list(APPEND DOC_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/big2/include")

        file(GLOB DOC_PAGES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/docs/*.md")
        list(APPEND DOC_SOURCES ${DOC_PAGES})

        doxygen_add_docs(big2-docs ${DOC_SOURCES})
    endif()
endif()
