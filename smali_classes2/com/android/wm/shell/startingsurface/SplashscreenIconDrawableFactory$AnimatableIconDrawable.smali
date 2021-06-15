.class Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;
.super Landroid/window/SplashScreenView$SplashscreenIconDrawable;
.source "SplashscreenIconDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableIconDrawable"
.end annotation


# static fields
.field private static sMask:Landroid/graphics/Path;


# instance fields
.field private mAnimatableIcon:Landroid/graphics/drawable/Animatable;

.field private mAnimationTriggered:Z

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconAnimator:Landroid/animation/Animator;

.field private final mMask:Landroid/graphics/Path;

.field private final mMaskMatrix:Landroid/graphics/Matrix;

.field private final mMaskScaleOnly:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private final mTmpOutRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 155
    invoke-direct {p0}, Landroid/window/SplashScreenView$SplashscreenIconDrawable;-><init>()V

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 149
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 210
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 156
    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040249

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    sput-object v1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->sMask:Landroid/graphics/Path;

    .line 159
    new-instance v1, Landroid/graphics/Path;

    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->sMask:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMask:Landroid/graphics/Path;

    .line 160
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    .line 161
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 162
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)Landroid/graphics/drawable/Animatable;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mAnimatableIcon:Landroid/graphics/drawable/Animatable;

    return-object p0
.end method

.method private ensureAnimationStarted()V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mAnimationTriggered:Z

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mIconAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mIconAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mAnimationTriggered:Z

    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 7

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3faaaaab

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 233
    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    sub-int v5, v0, v2

    sub-int v6, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    .line 234
    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 241
    sget-object p1, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 242
    invoke-virtual {p0}, Landroid/window/SplashScreenView$SplashscreenIconDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->ensureAnimationStarted()V

    .line 262
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected prepareAnimate(JLjava/lang/Runnable;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mAnimatableIcon:Landroid/graphics/drawable/Animatable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 172
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mIconAnimator:Landroid/animation/Animator;

    .line 173
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 174
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mIconAnimator:Landroid/animation/Animator;

    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x1

    return p0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public setAlpha(I)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
