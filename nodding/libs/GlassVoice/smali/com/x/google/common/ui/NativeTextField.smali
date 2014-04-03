.class public interface abstract Lcom/x/google/common/ui/NativeTextField;
.super Ljava/lang/Object;


# static fields
.field public static final INITIAL_CAPS_SENTENCE:I = 0x200000

.field public static final MIDP_MODE_MASK:I = 0xffff

.field public static final MODE_ANY:I = 0x1

.field public static final MODE_DECIMAL:I = 0x20

.field public static final MODE_EMAIL_ADDRESS:I = 0x2

.field public static final MODE_INTEGER:I = 0x4

.field public static final MODE_MULTIPLE_LINES:I = 0x1000000

.field public static final MODE_NON_PREDICTIVE:I = 0x80000

.field public static final MODE_PASSWORD:I = 0x10000

.field public static final MODE_PHONE_NUMBER:I = 0x8

.field public static final MODE_SENSITIVE:I = 0x40000

.field public static final MODE_URL:I = 0x10


# virtual methods
.method public abstract display()V
.end method

.method public abstract getCancelCommand()Lcom/x/google/common/ui/GoogleCommand;
.end method

.method public abstract getCommandListener()Lcom/x/google/common/ui/GoogleCommandListener;
.end method

.method public abstract getMode()I
.end method

.method public abstract getOkCommand()Lcom/x/google/common/ui/GoogleCommand;
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract setCommandListener(Lcom/x/google/common/ui/GoogleCommandListener;)V
.end method

.method public abstract setLabel(Ljava/lang/String;)V
.end method

.method public abstract setMaxSize(I)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setString(Ljava/lang/String;)V
.end method
