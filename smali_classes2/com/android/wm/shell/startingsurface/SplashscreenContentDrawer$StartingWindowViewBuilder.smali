.class Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
.super Ljava/lang/Object;
.source "SplashscreenContentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingWindowViewBuilder"
.end annotation


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mBuildComplete:Z

.field private mCachedResult:Landroid/window/SplashScreenView;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Z

.field private mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mFinalIconSize:I

.field private mThemeColor:I

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V
    .locals 1

    .line 227
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    .line 237
    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V

    return-void
.end method

.method private createIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    :goto_0
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 311
    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/os/Handler;

    move-result-object v2

    .line 308
    invoke-static {v0, p1, v1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory;->makeIconDrawable(ILandroid/graphics/drawable/Drawable;ILandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private fillViewWithIcon(ILandroid/graphics/drawable/Drawable;I)Landroid/window/SplashScreenView;
    .locals 4

    const-wide/16 v0, 0x20

    const-string v2, "fillViewWithIcon"

    .line 380
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    new-instance v2, Landroid/window/SplashScreenView$Builder;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    invoke-virtual {v2, v3}, Landroid/window/SplashScreenView$Builder;->setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;

    if-eqz p2, :cond_0

    .line 384
    invoke-virtual {v2, p1}, Landroid/window/SplashScreenView$Builder;->setIconSize(I)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 385
    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/window/SplashScreenView$Builder;->setIconBackground(I)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    .line 386
    invoke-virtual {p1, p2}, Landroid/window/SplashScreenView$Builder;->setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    move-result-object p1

    .line 387
    invoke-virtual {p1, p3}, Landroid/window/SplashScreenView$Builder;->setAnimationDurationMillis(I)Landroid/window/SplashScreenView$Builder;

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 391
    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p3

    .line 390
    invoke-virtual {v2, p1, p2, p3}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 393
    :cond_1
    invoke-virtual {v2}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object p1

    .line 395
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillViewWithIcon surfaceWindowView "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mEmptyView:Z

    if-eqz p0, :cond_2

    .line 398
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->setNotCopyable()V

    const/4 p0, 0x0

    .line 399
    invoke-virtual {p1, p0}, Landroid/window/SplashScreenView;->setRevealAnimationSupported(Z)V

    .line 401
    :cond_2
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->makeSystemUIColorsTransparent()V

    .line 402
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1
.end method

.method private processAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 13

    .line 315
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x20

    const-string v2, "processAdaptiveIcon"

    .line 319
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 320
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 322
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    .line 323
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 325
    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 326
    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    .line 329
    invoke-virtual {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->isComplexColor()Z

    move-result v6

    .line 330
    invoke-virtual {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result v7

    .line 333
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "foreground complex color? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " main color: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 333
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->isComplexColor()Z

    move-result v8

    .line 337
    invoke-virtual {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result v9

    .line 339
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "background complex color? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "theme color? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_3

    .line 352
    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v6

    invoke-static {v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    .line 353
    invoke-static {v6, v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1400(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    invoke-virtual {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    .line 355
    invoke-static {v3, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1400(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 357
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object p1

    const-string v3, "makeSplashScreenContentView: choose fg icon"

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->nonTransparentRatio()F

    move-result p1

    const v3, 0x3ee38e39

    cmpg-float p1, p1, v3

    if-gez p1, :cond_2

    const p1, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v3, 0x3f000000    # 0.5f

    .line 366
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    float-to-int p1, v4

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    .line 367
    invoke-direct {p0, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 370
    :cond_3
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "makeSplashScreenContentView: draw whole icon"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return v5
.end method


# virtual methods
.method build()Landroid/window/SplashScreenView;
    .locals 4

    .line 264
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mCachedResult:Landroid/window/SplashScreenView;

    return-object p0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mEmptyView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 277
    iput v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v1

    .line 282
    invoke-direct {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 285
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/high16 v3, 0x3f000000    # 0.5f

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 288
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/launcher3/icons/IconProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->processAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 294
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The icon is not an AdaptiveIconDrawable"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->createIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_5
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconSize:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->fillViewWithIcon(ILandroid/graphics/drawable/Drawable;I)Landroid/window/SplashScreenView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mCachedResult:Landroid/window/SplashScreenView;

    const/4 v1, 0x1

    .line 303
    iput-boolean v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object v0

    .line 268
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to create StartingWindowView, lack of materials!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method makeEmptyView(Z)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mEmptyView:Z

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setContext(Landroid/content/Context;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 259
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setWindowBGColor(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 240
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method
