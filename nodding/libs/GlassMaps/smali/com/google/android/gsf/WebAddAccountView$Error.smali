.class public final enum Lcom/google/android/gsf/WebAddAccountView$Error;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/WebAddAccountView$Error;

.field public static final enum HttpError:Lcom/google/android/gsf/WebAddAccountView$Error;

.field public static final enum TooManyRedirects:Lcom/google/android/gsf/WebAddAccountView$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gsf/WebAddAccountView$Error;

    const-string v1, "HttpError"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/WebAddAccountView$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/WebAddAccountView$Error;->HttpError:Lcom/google/android/gsf/WebAddAccountView$Error;

    new-instance v0, Lcom/google/android/gsf/WebAddAccountView$Error;

    const-string v1, "TooManyRedirects"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/WebAddAccountView$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/WebAddAccountView$Error;->TooManyRedirects:Lcom/google/android/gsf/WebAddAccountView$Error;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gsf/WebAddAccountView$Error;

    sget-object v1, Lcom/google/android/gsf/WebAddAccountView$Error;->HttpError:Lcom/google/android/gsf/WebAddAccountView$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/WebAddAccountView$Error;->TooManyRedirects:Lcom/google/android/gsf/WebAddAccountView$Error;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/WebAddAccountView$Error;->$VALUES:[Lcom/google/android/gsf/WebAddAccountView$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/WebAddAccountView$Error;
    .locals 1

    const-class v0, Lcom/google/android/gsf/WebAddAccountView$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/WebAddAccountView$Error;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/WebAddAccountView$Error;
    .locals 1

    sget-object v0, Lcom/google/android/gsf/WebAddAccountView$Error;->$VALUES:[Lcom/google/android/gsf/WebAddAccountView$Error;

    invoke-virtual {v0}, [Lcom/google/android/gsf/WebAddAccountView$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/WebAddAccountView$Error;

    return-object v0
.end method
