.class public final Lcom/android/systemui/statusbar/MediaArtworkProcessor;
.super Ljava/lang/Object;
.source "MediaArtworkProcessor.kt"


# instance fields
.field private mArtworkCache:Landroid/graphics/Bitmap;

.field private final mTmpSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 58
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x6

    iget p0, p0, Landroid/graphics/Point;->y:I

    div-int/lit8 p0, p0, 0x6

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v3, 0x1

    invoke-static {p2, p0, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 64
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v3, :cond_2

    .line 66
    invoke-virtual {p0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 67
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto/16 :goto_b

    :catch_0
    move-exception p0

    move-object v0, v2

    goto/16 :goto_6

    .line 69
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 70
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    sget-object v3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v4, 0x2

    .line 72
    invoke-static {v0, p0, v3, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 74
    :try_start_4
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/high16 v4, 0x41c80000    # 25.0f

    .line 76
    :try_start_5
    invoke-virtual {v1, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 81
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p2

    .line 83
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p2

    const/16 v5, 0xb2

    invoke-static {p2, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_3

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 91
    :goto_2
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v0, v2

    :goto_3
    move-object v2, v3

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v0, v2

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v0, v2

    :goto_4
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_b

    :catch_3
    move-exception p1

    move-object v0, v2

    move-object v3, v0

    :goto_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_7

    :catchall_4
    move-exception p0

    move-object p1, v2

    move-object v0, p1

    goto :goto_b

    :catch_4
    move-exception p0

    move-object p1, v2

    move-object v0, p1

    :goto_6
    move-object v3, v0

    :goto_7
    :try_start_6
    const-string p2, "MediaArtworkProcessor"

    const-string v4, "error while processing artwork"

    .line 87
    invoke-static {p2, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v3, :cond_4

    goto :goto_8

    .line 90
    :cond_4
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    :goto_8
    if-nez v0, :cond_5

    goto :goto_9

    .line 91
    :cond_5
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    :goto_9
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    if-nez p1, :cond_6

    goto :goto_a

    .line 93
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_a
    return-object v2

    :catchall_5
    move-exception p0

    move-object v2, v3

    :goto_b
    if-nez v2, :cond_7

    goto :goto_c

    .line 90
    :cond_7
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    :goto_c
    if-nez v0, :cond_8

    goto :goto_d

    .line 91
    :cond_8
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    :goto_d
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    if-nez p1, :cond_9

    goto :goto_e

    .line 93
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_e
    throw p0
.end method
