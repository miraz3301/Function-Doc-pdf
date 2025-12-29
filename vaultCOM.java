class User {
    private Long id;
    private String username;
    private String password;
    private UserStatus status; // ONLINE, OFFLINE

    // getters, setters
}
class Message {
    private Long id;
    private String content;
    private User sender;
    private User receiver;
    private MessageStatus status; // SENT, DELIVERED, READ
    private LocalDateTime time;
}
class Chat {
    private Long chatId;
    private List<User> participants;
    private List<Message> messages;
}

class MessageService {
    public void sendMessage(Message msg) {
        // save to DB
        // notify receiver via WebSocket
    }
}
class UserService {
    public User login(String username, String password) {
        // authentication logic
    }
}
@RestController
class MessageController {

    @Autowired
    private MessageService messageService;

    @PostMapping("/send")
    public void send(@RequestBody Message msg) {
        messageService.sendMessage(msg);
    }
}
class ClientUser {
    private String username;
    private boolean online;
}

