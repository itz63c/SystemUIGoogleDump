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
.field private mBrandingDrawable:Landroid/graphics/drawable/Drawable;

.field private mBuildComplete:Z

.field private mCachedResult:Landroid/window/SplashScreenView;

.field private mContext:Landroid/content/Context;

.field private mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconAnimationDuration:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mScale:F

.field private mThemeBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mThemeColor:I

.field private mWindow:Landroid/view/Window;

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 177
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 181
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mScale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V

    return-void
.end method

.method private fillViewWithIcon(Landroid/view/Window;Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView;
    .locals 1

    .line 317
    new-instance v0, Landroid/window/SplashScreenView$Builder;

    invoke-direct {v0, p2}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    invoke-virtual {v0, p3}, Landroid/window/SplashScreenView$Builder;->setIconSize(I)Landroid/window/SplashScreenView$Builder;

    move-result-object p2

    iget p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    invoke-virtual {p2, p3}, Landroid/window/SplashScreenView$Builder;->setBackgroundColor(I)Landroid/window/SplashScreenView$Builder;

    if-eqz p4, :cond_0

    .line 320
    invoke-virtual {v0, p4}, Landroid/window/SplashScreenView$Builder;->setCenterViewDrawable(Landroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView$Builder;

    .line 322
    :cond_0
    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mIconAnimationDuration:I

    invoke-virtual {v0, p2}, Landroid/window/SplashScreenView$Builder;->setAnimationDuration(I)Landroid/window/SplashScreenView$Builder;

    .line 323
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 324
    iget-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p3

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 325
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p0

    .line 324
    invoke-virtual {v0, p2, p3, p0}, Landroid/window/SplashScreenView$Builder;->setBrandingDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/window/SplashScreenView$Builder;

    .line 327
    :cond_1
    invoke-virtual {v0}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object p0

    .line 331
    invoke-virtual {p1, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 332
    invoke-virtual {p0, p1}, Landroid/window/SplashScreenView;->cacheRootWindow(Landroid/view/Window;)V

    .line 333
    invoke-virtual {p0}, Landroid/window/SplashScreenView;->makeSystemUIColorsTransparent()V

    return-object p0
.end method

.method private processAdaptiveIcon()Z
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_0
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 262
    new-instance v1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    .line 263
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 265
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 266
    new-instance v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    .line 269
    invoke-virtual {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->isComplexColor()Z

    .line 270
    invoke-virtual {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result v5

    .line 276
    invoke-virtual {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->isComplexColor()Z

    move-result v6

    .line 277
    invoke-virtual {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result v7

    if-nez v6, :cond_2

    .line 291
    iget v6, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    invoke-static {v6, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    invoke-virtual {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    .line 293
    invoke-static {v1, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    :cond_1
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->nonTransparentRatio()F

    move-result v0

    const v1, 0x3ee38e39

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 304
    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mScale:F

    goto :goto_0

    .line 310
    :cond_2
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    return v4
.end method

.method private processThemeColor()V
    .locals 3

    .line 245
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeBGDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    .line 247
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->nonTransparentRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 249
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Window background is transparent, fill background with black color"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->getDominateColor()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeColor:I

    :goto_0
    return-void
.end method


# virtual methods
.method build()Landroid/window/SplashScreenView;
    .locals 4

    .line 220
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mCachedResult:Landroid/window/SplashScreenView;

    return-object p0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_1

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 228
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Theme Background Drawable is null, forget to set Theme Drawable?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->processThemeColor()V

    .line 232
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->processAdaptiveIcon()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 236
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mFinalIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->fillViewWithIcon(Landroid/view/Window;Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/window/SplashScreenView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mCachedResult:Landroid/window/SplashScreenView;

    const/4 v1, 0x1

    .line 240
    iput-boolean v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object v0

    .line 224
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$600()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to create StartingWindowView, lack of materials!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method setBrandingDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBrandingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setContext(Landroid/content/Context;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setIconAnimationDuration(I)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 202
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mIconAnimationDuration:I

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setThemeDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mThemeBGDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method

.method setWindow(Landroid/view/Window;)Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mWindow:Landroid/view/Window;

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$StartingWindowViewBuilder;->mBuildComplete:Z

    return-object p0
.end method
