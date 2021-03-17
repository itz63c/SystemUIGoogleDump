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

.field private mIconSize:I

.field private final mMaxIconAnimationDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMaxIconAnimationDuration:I

    return-void
.end method

.method static synthetic access$1000(II)Z
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->isRgbSimilarInHsv(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result p0

    return p0
.end method

.method private createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 90
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getSystemBGColor()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private getSystemBGColor()I
    .locals 1

    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    if-nez p0, :cond_0

    .line 82
    sget-object p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    const-string v0, "System context does not exist!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x1000000

    return p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 86
    sget v0, Lcom/android/wm/shell/R$color;->splash_window_background_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private static isRgbSimilarInHsv(II)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [F

    new-array v1, v1, [F

    .line 344
    invoke-static {p0, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 345
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 347
    aget p1, v2, p0

    aget v3, v1, p0

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    add-int/lit16 p1, p1, 0xb4

    .line 348
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, -0xb4

    int-to-float p1, p1

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr p1, v3

    float-to-double v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 352
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aget p1, v2, v0

    aget v7, v1, v0

    sub-float/2addr p1, v7

    float-to-double v7, p1

    .line 353
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    const/4 p1, 0x2

    aget v2, v2, p1

    aget p1, v1, p1

    sub-float/2addr v2, p1

    float-to-double v1, v2

    .line 354
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v3, v1

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v1

    .line 356
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static makeSplashscreenContentDrawable(Landroid/view/Window;Landroid/content/Context;I)Landroid/window/SplashScreenView;
    .locals 3

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    return-object v1

    .line 379
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v1

    .line 383
    :cond_2
    new-instance v0, Landroid/window/SplashScreenView;

    invoke-direct {v0, p1}, Landroid/window/SplashScreenView;-><init>(Landroid/content/Context;)V

    .line 384
    invoke-virtual {v0}, Landroid/window/SplashScreenView;->setNotCopyable()V

    .line 385
    invoke-virtual {v0, p2}, Landroid/window/SplashScreenView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-virtual {p0, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method private updateDensity()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mIconSize:I

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_brand_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageWidth:I

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$dimen;->starting_surface_brand_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mBrandingImageHeight:I

    return-void
.end method


# virtual methods
.method makeSplashScreenContentView(Landroid/view/Window;Landroid/content/Context;II)Landroid/window/SplashScreenView;
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    .line 98
    invoke-static {p1, p2, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->makeSplashscreenContentDrawable(Landroid/view/Window;Landroid/content/Context;I)Landroid/window/SplashScreenView;

    move-result-object p4

    if-eqz p4, :cond_0

    return-object p4

    .line 104
    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->createWindowAttrs(Landroid/content/Context;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    move-result-object p4

    .line 105
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V

    .line 108
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 113
    :cond_2
    sget-object v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->TAG:Ljava/lang/String;

    const-string v2, "Window background not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    :goto_0
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 119
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 121
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$400(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)I

    move-result v2

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mMaxIconAnimationDuration:I

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 120
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 123
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    move-object p3, p0

    .line 129
    :goto_2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setWindow(Landroid/view/Window;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setContext(Landroid/content/Context;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setThemeDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setIconAnimationDuration(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    .line 134
    invoke-static {p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->access$500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->build()Landroid/window/SplashScreenView;

    move-result-object p0

    return-object p0
.end method
