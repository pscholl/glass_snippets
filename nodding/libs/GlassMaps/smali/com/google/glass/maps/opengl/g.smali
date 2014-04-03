.class public final Lcom/google/glass/maps/opengl/g;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Lcom/google/glass/maps/opengl/h;

.field private final c:Lcom/google/glass/maps/opengl/h;

.field private final d:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/g;->d:[I

    :try_start_0
    new-instance v0, Lcom/google/glass/maps/opengl/h;

    const v1, 0x8b31

    invoke-direct {v0, v1, p1}, Lcom/google/glass/maps/opengl/h;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/opengl/g;->b:Lcom/google/glass/maps/opengl/h;

    new-instance v0, Lcom/google/glass/maps/opengl/h;

    const v1, 0x8b30

    invoke-direct {v0, v1, p2}, Lcom/google/glass/maps/opengl/h;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/opengl/g;->c:Lcom/google/glass/maps/opengl/h;

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    const-string v1, "Failed to create program"

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/maps/opengl/g;->b()V

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    iget-object v1, p0, Lcom/google/glass/maps/opengl/g;->b:Lcom/google/glass/maps/opengl/h;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/h;->b()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    iget-object v1, p0, Lcom/google/glass/maps/opengl/g;->c:Lcom/google/glass/maps/opengl/h;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/h;->b()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    const v1, 0x8b82

    iget-object v2, p0, Lcom/google/glass/maps/opengl/g;->d:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    iget-object v0, p0, Lcom/google/glass/maps/opengl/g;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    const-string v1, "Program link failed!"

    iget v2, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/glass/maps/opengl/g;->b()V

    throw v0

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-static {p0, p2}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    new-instance v2, Lcom/google/glass/maps/opengl/g;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/maps/opengl/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/glass/maps/opengl/ProgramException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/ProgramException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/maps/c/n;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/g;->b:Lcom/google/glass/maps/opengl/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/g;->b:Lcom/google/glass/maps/opengl/h;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/h;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/opengl/g;->c:Lcom/google/glass/maps/opengl/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/g;->c:Lcom/google/glass/maps/opengl/h;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/h;->a()V

    :cond_1
    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;F)V
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public final a(Ljava/lang/String;FF)V
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public final a(Ljava/lang/String;FFFF)V
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V
    .locals 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/a;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/a;->f()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/a;->e()Ljava/nio/Buffer;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[F)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 5

    const v4, 0x3b808081

    ushr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, v4

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, v4

    ushr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v4

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/glass/maps/opengl/g;->a:I

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    invoke-static {v4, v1, v2, v3, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method
