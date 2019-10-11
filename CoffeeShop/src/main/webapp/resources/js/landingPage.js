let main = document.getElementById('main');
let categoryItem = document.getElementsByClassName('category__item');
let vote = document.getElementsByClassName('vote');
let votePanel = document.getElementById('vote');
let containerVotePanel = document.getElementById('container-vote');

//show vote panel and click then hide
Array.from(vote).forEach(element => {
    element.addEventListener('click', showVotePanel);
});
containerVotePanel.addEventListener('click', hideVotePanel);

let stars = votePanel.children;
for (let i = 0; i < stars.length; i++) {
    stars[i].onclick = () => {
        console.log(5 - i);
        Array.from(stars).forEach(e => {
            e.classList.remove('selected');
        });
        stars[i].classList.add('selected');
        hideVotePanel();
    }
}
function hideVotePanel() {
    containerVotePanel.style.display = 'none';
}
function showVotePanel() {
    containerVotePanel.style.display = 'flex';
}
// end

for (let i = 0; i < categoryItem.length; i++) {
    categoryItem[i].onclick = function () {
        for (let i = 0; i < categoryItem.length; i++) {
            categoryItem[i].classList.remove('category__item--active');
            categoryItem[i].classList.remove('category__item--border');
        }
        categoryItem[i].classList.add('category__item--active');
        categoryItem[i].classList.add('category__item--border');
    }
}