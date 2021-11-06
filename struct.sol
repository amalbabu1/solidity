// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract testStruct{
 struct BookDetails{
     uint256 id;
     string title;
     string author;
 }   
 BookDetails book;
 
 function setBook() public{
     book = BookDetails(1001,'Bloackchain','KBA');
 }
 
 function setAnother()public{
     book.id = 1002;
     book.title='Learn';
     book.author='KBA';
 }
 
 function getBookDetails() public view returns (uint256, string memory, string memory){
     
     return (book.id,book.title,book.author);
 }
 
}