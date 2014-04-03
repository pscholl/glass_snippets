.class public Lcom/x/google/masf/protocol/MultipartResponseBuilder;
.super Ljava/lang/Object;


# instance fields
.field private bodyParts:Ljava/util/Vector;

.field private id:I

.field private root:Lcom/x/google/masf/protocol/BodyPart;

.field private status:I


# direct methods
.method public constructor <init>(IILcom/x/google/masf/protocol/BodyPart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->id:I

    iput p2, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->status:I

    iput-object p3, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->root:Lcom/x/google/masf/protocol/BodyPart;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->bodyParts:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/x/google/masf/protocol/BodyPart;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public toMultipartResponse()Lcom/x/google/masf/protocol/MultipartResponse;
    .locals 5

    iget-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/x/google/masf/protocol/BodyPart;

    iget-object v1, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, Lcom/x/google/masf/protocol/MultipartResponse;

    iget v2, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->id:I

    iget v3, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->status:I

    iget-object v4, p0, Lcom/x/google/masf/protocol/MultipartResponseBuilder;->root:Lcom/x/google/masf/protocol/BodyPart;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/x/google/masf/protocol/MultipartResponse;-><init>(IILcom/x/google/masf/protocol/BodyPart;[Lcom/x/google/masf/protocol/BodyPart;)V

    return-object v1
.end method
