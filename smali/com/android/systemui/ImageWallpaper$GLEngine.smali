.class Lcom/android/systemui/ImageWallpaper$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLEngine"
.end annotation


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_SURFACE_WIDTH:I = 0x80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

.field private final mFinishRenderingTask:Ljava/lang/Runnable;

.field private mHeight:I

.field private mImgHeight:I

.field private mImgWidth:I

.field private mPageOffset:F

.field private mPageWidth:F

.field private mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method public static synthetic $r8$lambda$89dxFU8sWSFIfynevrdTeLm68JA(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    return-void
.end method

.method public static synthetic $r8$lambda$9g3qrxmCNtjmE1IJzu6AzIVY0w8(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$removeLocalColorsAreas$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FWMjchjczJbKWvRftgd1gCAXYPc(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onOffsetsChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RFczgBLzMyK4xMioXCAWoO4UzrQ(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateMiniBitmap()V

    return-void
.end method

.method public static synthetic $r8$lambda$bJqjp1e-t9H4Pna1VSwc1QwpKjU(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSurfaceChanged$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbqxlcs-CnL-GGLAsIIonsUPAxE(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$updateMiniBitmap$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbsssQPX5ut7HYUmX6nzVEdoVgo(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->drawFrame()V

    return-void
.end method

.method public static synthetic $r8$lambda$wiYb4Tly7uoqa--reY1GMVTo7c8(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onDestroy$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$xXQCyEnJF12w8UbEsmO_FkJelm8(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSurfaceCreated$5(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yntuzcLguMOFtXmiapf1ErFDEVc(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$addLocalColorsAreas$3(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 103
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 105
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWidth:I

    .line 106
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mHeight:I

    .line 107
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 108
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 109
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    .line 110
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper;Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 117
    sget-object v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda10;

    invoke-direct {p0, p1, v0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 103
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 105
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWidth:I

    .line 106
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mHeight:I

    .line 107
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 108
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 109
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    .line 110
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    return-void
.end method

.method private cancelFinishRenderingTask()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getLocalWallpaperColors(Ljava/util/List;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object p2

    .line 242
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 244
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$400()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private drawFrame()V
    .locals 0

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    return-void
.end method

.method private finishRendering()V
    .locals 1

    const-string v0, "ImageWallpaper#finishRendering"

    .line 431
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 434
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    .line 436
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private getLocalWallpaperColors(Ljava/util/List;Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateShift()V

    const/4 v1, 0x0

    .line 301
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 302
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-direct {p0, v2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->pageToImgRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 303
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$500()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    .line 308
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    .line 309
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    .line 310
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 311
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 312
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 317
    :cond_1
    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 318
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 317
    invoke-static {p2, v2, v3, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 319
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 320
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 304
    :cond_2
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private synthetic lambda$addLocalColorsAreas$3(Ljava/util/List;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onDestroy$2()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->finish()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->finish()V

    .line 216
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    return-void
.end method

.method private synthetic lambda$onOffsetsChanged$0()V
    .locals 2

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceChanged$6(II)V
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceChanged(II)V

    return-void
.end method

.method private synthetic lambda$onSurfaceCreated$5(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needSupportWideColorGamut()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;Z)Z

    .line 330
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceCreated()V

    return-void
.end method

.method private synthetic lambda$removeLocalColorsAreas$4(Ljava/util/List;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 255
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateMiniBitmap$1(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x80

    if-le v0, v2, :cond_0

    const/high16 v2, 0x43000000    # 128.0f

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 187
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 189
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 189
    invoke-static {p1, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/ImageWallpaper;->access$002(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 191
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private needSupportWideColorGamut()Z
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isWcgContent()Z

    move-result p0

    return p0
.end method

.method private pageToImgRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 277
    iget v2, p1, Landroid/graphics/RectF;->left:F

    rem-float/2addr v2, v0

    div-float/2addr v2, v0

    .line 278
    iget v3, p1, Landroid/graphics/RectF;->right:F

    rem-float/2addr v3, v0

    div-float/2addr v3, v0

    .line 279
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 281
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 282
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 283
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iput p1, v4, Landroid/graphics/RectF;->top:F

    .line 284
    iget p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    mul-float/2addr v2, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 286
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    mul-float/2addr v3, v2

    iget p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    mul-float/2addr p1, p0

    add-float/2addr v3, p1

    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    iput p0, v4, Landroid/graphics/RectF;->right:F

    .line 288
    iget p1, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    .line 290
    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 291
    iput v1, v4, Landroid/graphics/RectF;->right:F

    :cond_0
    return-object v4
.end method

.method private preRenderInternal()V
    .locals 5

    .line 361
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 365
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglContext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recreate egl context failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 375
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needSupportWideColorGamut()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recreate egl surface failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 383
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceCreated()V

    .line 384
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceChanged(II)V

    :cond_3
    return-void
.end method

.method private requestRenderInternal()V
    .locals 4

    .line 396
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onDrawFrame()V

    .line 402
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->swapBuffer()Z

    move-result p0

    if-nez p0, :cond_2

    .line 403
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string v0, "drawFrame failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 406
    :cond_1
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRender: not ready, has context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v3}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", has surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 407
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", frame="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 406
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private scheduleFinishRendering()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateMiniBitmap()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->useBitmap(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateShift()V
    .locals 3

    .line 166
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    .line 168
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    return-void

    .line 172
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 173
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 174
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    .line 175
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    if-lez v2, :cond_1

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 176
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    sub-float/2addr v1, v0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    return-void
.end method

.method private updateSurfaceSize()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x80

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 200
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 201
    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method


# virtual methods
.method public addLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 445
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 446
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Engine="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "valid surface="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const-string v1, "null"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 448
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "surface frame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/EglHelper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 456
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method getEglHelperInstance()Lcom/android/systemui/glwallpaper/EglHelper;
    .locals 0

    .line 140
    new-instance p0, Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;-><init>()V

    return-object p0
.end method

.method getRendererInstance()Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
    .locals 1

    .line 144
    new-instance v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getEglHelperInstance()Lcom/android/systemui/glwallpaper/EglHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getRendererInstance()Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    .line 127
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/WindowManager;

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 129
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mHeight:I

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWidth:I

    .line 133
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/ImageWallpaper;->access$002(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 134
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper;->access$002(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    const/4 p2, 0x1

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p4, p3, p1

    if-gtz p4, :cond_0

    div-float/2addr p1, p3

    .line 153
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)I

    move-result p1

    if-ne p2, p1, :cond_1

    return-void

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1, p2}, Lcom/android/systemui/ImageWallpaper;->access$202(Lcom/android/systemui/ImageWallpaper;I)I

    .line 159
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateShift()V

    .line 161
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 336
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRender()V
    .locals 1

    const-string v0, "ImageWallpaper#postRender"

    .line 414
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->scheduleFinishRendering()V

    .line 416
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public preRender()V
    .locals 1

    const-string v0, "ImageWallpaper#preRender"

    .line 354
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRenderInternal()V

    .line 356
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public removeLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestRender()V
    .locals 1

    const-string v0, "ImageWallpaper#requestRender"

    .line 390
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRenderInternal()V

    .line 392
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public shouldZoomOutWallpaper()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsLocalColorExtraction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
