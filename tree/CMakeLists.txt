if(BUILD_UNIT_TESTS)
    enable_testing()

    add_executable(TreeNode_test
        Node.test.cpp
    )
    target_include_directories(TreeNode_test 
        PRIVATE
            ${CMAKE_SOURCE_DIR}
    )
    target_link_libraries(TreeNode_test
        PRIVATE
            libcpplog
    )
    add_test(
        NAME "UT data_structures::tree::Node"
        COMMAND TreeNode_test
    )

endif()