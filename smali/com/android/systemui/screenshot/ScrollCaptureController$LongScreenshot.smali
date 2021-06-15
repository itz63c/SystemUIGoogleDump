.class Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;
.super Ljava/lang/Object;
.source "ScrollCaptureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/ScrollCaptureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongScreenshot"
.end annotation


# instance fields
.field private final mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

.field private final mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;


# virtual methods
.method public getBottom()I
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getBottom()I

    move-result p0

    return p0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result p0

    return p0
.end method

.method public getPageHeight()I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->getPageHeight()I

    move-result p0

    return p0
.end method

.method public getTop()I
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getTop()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 2

    const-string v0, "ScrollCaptureController"

    const-string v1, "LongScreenshot :: release()"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ImageTileSet;->clear()V

    .line 95
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;->release()V

    return-void
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->toBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongScreenshot{w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ImageTileSet;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
