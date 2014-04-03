.class final enum Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

.field public static final enum QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

.field public static final enum START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

.field public static final enum UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;


# instance fields
.field private final commandString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const-string v1, "START"

    const-string v2, "start"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const-string v1, "UPLOAD"

    const-string v2, "upload, finalize"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const-string v1, "QUERY"

    const-string v2, "query"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->START:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->QUERY:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->commandString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .locals 1

    const-class v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;
    .locals 1

    sget-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    invoke-virtual {v0}, [Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    return-object v0
.end method


# virtual methods
.method public final toCommandString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->commandString:Ljava/lang/String;

    return-object v0
.end method
