.class public Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.super Ljava/lang/Object;
.source "SplashscreenContentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;,
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;,
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrandingImageHeight:I

.field private mBrandingImageWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultIconSize:I

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private mIconSize:I

.field private mMainWindowShiftLength:I

.field private final mSplashscreenWorkerHandler:Landroid/os/Handler;

.field private final mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static synthetic $r8$lambda$UjherAeTA2MLbllapTMiwQMc3SE(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;ZILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->lambda$createContentView$0(Landroid/content/Context;Landroid/content/pm/ActivityInfo;ZILjava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/TransactionPool;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    .line 83
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v0, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 85
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 90
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "wmshell.splashworker"

    const/16 v0, -0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 93
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Lcom/android/launcher3/icons/IconProvider;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(II)Z
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->isRgbSimilarInHsv(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 148
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    .line 168
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    .line 170
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->nonTransparentRatio()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    .line 172
    sget-object p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    const-string v0, "Window background is transparent, fill background with black color"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result p0

    return p0

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result p0

    return p0
.end method

.method private getSystemBGColor()I
    .locals 1

    .line 138
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    if-nez p0, :cond_0

    .line 140
    sget-object p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    const-string v0, "System context does not exist!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x1000000

    return p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 144
    sget v0, Lcom/android/wm/shell/R$color;->splash_window_background_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private static getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V
    .locals 2

    .line 196
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$202(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;I)I

    const/16 v0, 0x38

    .line 199
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$102(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;I)I

    const/16 v0, 0x39

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$402(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x3a

    .line 203
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$502(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;I)I

    const/16 v0, 0x3b

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$602(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x3c

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$702(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;I)I

    .line 209
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    sget-object p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window attributes color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " icon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " brandImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$600(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isRgbSimilarInHsv(II)Z
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 411
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->luminance(I)F

    move-result v3

    .line 412
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->luminance(I)F

    move-result v4

    cmpl-float v5, v3, v4

    const v6, 0x3d4ccccd    # 0.05f

    if-lez v5, :cond_1

    add-float/2addr v3, v6

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    add-float/2addr v4, v6

    add-float/2addr v3, v6

    div-float v3, v4, v3

    .line 416
    :goto_0
    sget-object v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRgbSimilarInHsv a: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " b "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " contrast ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 416
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x3

    new-array v5, v3, [F

    new-array v3, v3, [F

    .line 425
    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 426
    invoke-static {v1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x0

    .line 428
    aget v1, v5, v0

    aget v6, v3, v0

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0xb4

    .line 429
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, -0xb4

    int-to-float v6, v1

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 433
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 434
    aget v10, v5, v2

    aget v11, v3, v2

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x2

    .line 435
    aget v13, v5, v12

    aget v14, v3, v12

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double v13, v6, v10

    add-double/2addr v13, v8

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    div-double/2addr v13, v15

    .line 438
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 440
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hsvDiff "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ah "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " bh "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " as "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v2

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " bs "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v2

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " av "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v5, v5, v1

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " bv "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " sqH "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sqS "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sqV "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " root "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v13, v3

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method private synthetic lambda$createContentView$0(Landroid/content/Context;Landroid/content/pm/ActivityInfo;ZILjava/util/function/Consumer;)V
    .locals 3

    :try_start_0
    const-string v0, "makeSplashScreenContentView"

    const-wide/16 v1, 0x20

    .line 112
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->makeSplashScreenContentView(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/window/SplashScreenView;

    move-result-object p0

    .line 114
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    sget-object p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed creating starting window content at taskId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 120
    :goto_0
    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private makeSplashScreenContentView(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/window/SplashScreenView;
    .locals 2

    .line 181
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    .line 184
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->peekWindowBGColor(Landroid/content/Context;)I

    move-result p0

    .line 188
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setContext(Landroid/content/Context;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setWindowBGColor(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 190
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->makeEmptyView(Z)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 191
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->build()Landroid/window/SplashScreenView;

    move-result-object p0

    return-object p0
.end method

.method private peekWindowBGColor(Landroid/content/Context;)I
    .locals 5

    const-wide/16 v0, 0x20

    const-string v2, "peekWindowBGColor"

    .line 152
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 160
    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window background does not exist, using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->estimateWindowBGColor(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    .line 163
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0
.end method

.method private updateDensity()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 127
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->default_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mDefaultIconSize:I

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_brand_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_brand_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_exit_animation_window_shift_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    return-void
.end method


# virtual methods
.method applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .locals 9

    .line 673
    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMainWindowShiftLength:I

    iget-object v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;-><init>(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;ILcom/android/wm/shell/common/TransactionPool;Ljava/lang/Runnable;)V

    .line 675
    invoke-virtual {v8}, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;->startAnimations()V

    return-void
.end method

.method createContentView(Landroid/content/Context;ZLandroid/content/pm/ActivityInfo;ILjava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/content/pm/ActivityInfo;",
            "I",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SplashScreenView;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;ZILjava/util/function/Consumer;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
