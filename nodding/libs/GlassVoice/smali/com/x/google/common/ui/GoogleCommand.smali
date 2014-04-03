.class public Lcom/x/google/common/ui/GoogleCommand;
.super Ljava/lang/Object;


# static fields
.field public static final BACK_TYPE:I = 0x2

.field public static final CANCEL_TYPE:I = 0x3

.field public static final EXIT_TYPE:I = 0x7

.field public static final HELP_TYPE:I = 0x5

.field public static final ITEM_TYPE:I = 0x8

.field private static final MAX_ORDER:I = 0xfffe

.field public static final OK_TYPE:I = 0x4


# instance fields
.field private final action:Ljava/lang/Object;

.field private label:Ljava/lang/String;

.field private final order:I

.field private final tag:Ljava/lang/Object;

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_0

    const v0, 0xfffe

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For compatibility to Android, menu item order must be between 0 and 65534"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/x/google/common/ui/GoogleCommand;->label:Ljava/lang/String;

    iput p2, p0, Lcom/x/google/common/ui/GoogleCommand;->type:I

    iput p3, p0, Lcom/x/google/common/ui/GoogleCommand;->order:I

    iput-object p4, p0, Lcom/x/google/common/ui/GoogleCommand;->tag:Ljava/lang/Object;

    iput-object p5, p0, Lcom/x/google/common/ui/GoogleCommand;->action:Ljava/lang/Object;

    return-void
.end method

.method public static areSame([Lcom/x/google/common/ui/GoogleCommand;[Lcom/x/google/common/ui/GoogleCommand;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    move v2, v1

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public static getCommand(Ljava/lang/String;II)Lcom/x/google/common/ui/GoogleCommand;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/x/google/common/ui/GoogleCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/x/google/common/ui/GoogleCommand;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getCommand(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)Lcom/x/google/common/ui/GoogleCommand;
    .locals 6

    new-instance v0, Lcom/x/google/common/ui/GoogleCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/x/google/common/ui/GoogleCommand;-><init>(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/ui/GoogleCommand;->action:Ljava/lang/Object;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/ui/GoogleCommand;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/ui/GoogleCommand;->order:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/ui/GoogleCommand;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/ui/GoogleCommand;->type:I

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/common/ui/GoogleCommand;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/ui/GoogleCommand;->label:Ljava/lang/String;

    return-object v0
.end method
