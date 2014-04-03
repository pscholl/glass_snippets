.class public final Lcom/x/google/debug/Assert;
.super Ljava/lang/Object;


# static fields
.field private static final FAIL_REASON:Ljava/lang/String; = "explicit assertion failure"

.field private static final NEGATIVE:Z = false

.field private static final POSITIVE:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertEquals(JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->assertEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/x/google/debug/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/x/google/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertEquals(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/x/google/debug/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertFalse(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method

.method public static assertNotEquals(JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->assertNotEquals(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/x/google/debug/Assert;->assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/x/google/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotEquals(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotEquals(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/x/google/debug/Assert;->assertNotEquals(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/x/google/debug/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/x/google/debug/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method private static checkEquality(JJZ)Ljava/lang/String;
    .locals 2

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p4, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p4}, Lcom/x/google/debug/Assert;->failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/x/google/debug/Assert;->failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static checkEquality(ZZZ)Ljava/lang/String;
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p2}, Lcom/x/google/debug/Assert;->failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static checkNull(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/x/google/debug/Assert;->failNull(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/x/google/debug/Assert;->failSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static checkTrue(ZZ)Ljava/lang/String;
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/x/google/debug/Assert;->failTrue(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static fail()V
    .locals 2

    const-string v0, "explicit assertion failure"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Assert;->throwAssertionError(Ljava/lang/String;)V

    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "explicit assertion failure"

    invoke-static {v0, p0}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Assert;->throwAssertionError(Ljava/lang/String;)V

    return-void
.end method

.method private static failEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not expect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static failIfReason(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Assert;->throwAssertionError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Assert;->throwAssertionError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static failNull(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "expected null"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "did not expect null"

    goto :goto_0
.end method

.method private static failSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected instance ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] but got ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not expect instance ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static failTrue(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "expected true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "did not expect true"

    goto :goto_0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static throwAssertionError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/x/google/debug/AssertionError;

    invoke-direct {v0, p0}, Lcom/x/google/debug/AssertionError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    check-cast v0, Lcom/x/google/debug/AssertionError;

    throw v0
.end method

.method public static xassertEquals(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/x/google/debug/Assert;->xassertEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Assert;->xassertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/x/google/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p5, p6, p7}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertEquals(ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Assert;->xassertEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertFalse(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertFalse(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->xassertFalse(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/x/google/debug/Assert;->xassertNotEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Assert;->xassertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/x/google/debug/Assert;->checkEquality(JJZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p5, p6, p7}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkEquality(ZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotEquals(ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Assert;->xassertNotEquals(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->xassertNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Assert;->xassertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->xassertNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertNull(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkNull(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertSame(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Assert;->xassertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/x/google/debug/Assert;->checkSame(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p3, p4, p5}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertTrue(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/x/google/debug/Assert;->checkTrue(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p4}, Lcom/x/google/debug/Assert;->failIfReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xassertTrue(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->xassertTrue(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xfail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "explicit assertion failure"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Assert;->throwAssertionError(Ljava/lang/String;)V

    return-void
.end method

.method public static xfail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "explicit assertion failure"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/x/google/debug/Assert;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Assert;->throwAssertionError(Ljava/lang/String;)V

    return-void
.end method
