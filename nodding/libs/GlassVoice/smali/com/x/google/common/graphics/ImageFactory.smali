.class public interface abstract Lcom/x/google/common/graphics/ImageFactory;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createImage(II)Lcom/x/google/common/graphics/GoogleImage;
.end method

.method public abstract createImage(IIZ)Lcom/x/google/common/graphics/GoogleImage;
.end method

.method public abstract createImage(Ljava/lang/String;)Lcom/x/google/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createImage([BII)Lcom/x/google/common/graphics/GoogleImage;
.end method

.method public abstract createRGBImage([IIIZ)Lcom/x/google/common/graphics/GoogleImage;
.end method

.method public abstract createScaledJpeg([BII)[B
.end method

.method public abstract createSquareImage([BI)Lcom/x/google/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createUnscaledImage(Ljava/lang/String;)Lcom/x/google/common/graphics/GoogleImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
