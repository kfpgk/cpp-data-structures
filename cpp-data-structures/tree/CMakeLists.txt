if(BUILD_UNIT_TESTS)
    enable_testing()

    add_executable(TreeNode_test
        Node.test.cpp
    )
    target_link_libraries(TreeNode_test
        PRIVATE
            cpp-data-structures
    )
    add_test(
        NAME "UT cpp_data_structures::tree::Node"
        COMMAND TreeNode_test
    )

endif()