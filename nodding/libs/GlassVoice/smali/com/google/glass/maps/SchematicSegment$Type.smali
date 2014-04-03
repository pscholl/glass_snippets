.class public final enum Lcom/google/glass/maps/SchematicSegment$Type;
.super Ljava/lang/Enum;
.source "SchematicSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/SchematicSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/maps/SchematicSegment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/maps/SchematicSegment$Type;

.field public static final enum CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

.field public static final enum END:Lcom/google/glass/maps/SchematicSegment$Type;

.field public static final enum START:Lcom/google/glass/maps/SchematicSegment$Type;

.field public static final enum TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/google/glass/maps/SchematicSegment$Type;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/maps/SchematicSegment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 16
    new-instance v0, Lcom/google/glass/maps/SchematicSegment$Type;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/maps/SchematicSegment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 17
    new-instance v0, Lcom/google/glass/maps/SchematicSegment$Type;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/maps/SchematicSegment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment$Type;->CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 18
    new-instance v0, Lcom/google/glass/maps/SchematicSegment$Type;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/maps/SchematicSegment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/maps/SchematicSegment$Type;->$VALUES:[Lcom/google/glass/maps/SchematicSegment$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/maps/SchematicSegment$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/SchematicSegment$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/maps/SchematicSegment$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/glass/maps/SchematicSegment$Type;->$VALUES:[Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v0}, [Lcom/google/glass/maps/SchematicSegment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/SchematicSegment$Type;

    return-object v0
.end method
