// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract testMapping{
    struct Book{
        uint256 id;
        string title;
        string author;
    }
    
    mapping (uint256=>Book) books;
    
    function setBook() public {
        books[1001] = Book(1001, 'Learn Blockchain Part 1', 'KBA');
   }
    
    function setBookA () public{
        books[1002].id = 1002;
        books[1002].title='c';
        books[1002].author='d';
    }
    
    function getBook()public view returns(uint256,string memory, string memory){
        return (books[1001].id, books[1001].title, books[1001].author);
        }
    
}