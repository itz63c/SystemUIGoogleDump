.class public Lcom/android/systemui/shared/recents/model/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# instance fields
.field public appearance:I

.field public insets:Landroid/graphics/Rect;

.field public isRealSnapshot:Z

.field public isTranslucent:Z

.field public orientation:I

.field public reducedResolution:Z

.field public rotation:I

.field public scale:F

.field public snapshotId:J

.field public final thumbnail:Landroid/graphics/Bitmap;

.field public windowingMode:I


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->makeThumbnail(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 86
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    .line 87
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    .line 88
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    .line 89
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    .line 93
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->isRealSnapshot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    .line 94
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->isTranslucent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    .line 95
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    .line 96
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getAppearance()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    .line 97
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    return-void
.end method

.method private static makeThumbnail(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;
    .locals 5

    .line 65
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected snapshot without USAGE_GPU_SAMPLED_IMAGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ThumbnailData"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object p0

    .line 78
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 p0, -0x1000000

    .line 79
    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    return-object v1
.end method
