const socket = io();
const feed = document.getElementById("feed");

socket.on("liveFeed", (data) => {
  const item = document.createElement("li");
  item.textContent = `Time: ${data.timestamp}, Value: ${data.value}`;
  feed.prepend(item);
});
