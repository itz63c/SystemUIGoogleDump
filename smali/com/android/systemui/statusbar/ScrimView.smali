.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# instance fields
.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mColorLock:Ljava/lang/Object;

.field private final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorLock"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mExecutorLooper:Landroid/os/Looper;

.field private mTintColor:I

.field private final mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mViewAlpha:F


# direct methods
.method public static synthetic $r8$lambda$1D7DEtBWK90kXuDYGlRqq3sEZTQ(Lcom/android/systemui/statusbar/ScrimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$aC14V9chMq9oDSWAFqoxRs679x8(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->lambda$setColors$3(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$asalh6ViLhUQzCBFLbnEF3q0MC0(Lcom/android/systemui/statusbar/ScrimView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ScrimView;->lambda$setTint$4(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$fFjtcPk_G-0rkY02C9gRzmlyGqE(Lcom/android/systemui/statusbar/ScrimView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->lambda$setViewAlpha$5(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$iJGFVS7GAcOVrnyeIZJ5Typ4Ciw(Lcom/android/systemui/statusbar/ScrimView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->lambda$setClickable$2(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorLock:Ljava/lang/Object;

    .line 55
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 56
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 80
    new-instance p1, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    .line 84
    sget-object p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 85
    new-instance p1, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeOnExecutor(Ljava/lang/Runnable;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method private synthetic lambda$setClickable$2(Z)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$setColors$3(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    monitor-exit v0

    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 150
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setTint$4(IZ)V
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 176
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    .line 177
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method private synthetic lambda$setViewAlpha$5(F)V
    .locals 2

    .line 231
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 232
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateColorWithTint(Z)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    .line 185
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 188
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    goto :goto_3

    .line 190
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-eq v0, v1, :cond_5

    .line 195
    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 201
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 205
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected canReceivePointerEvents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object p0

    :catchall_0
    move-exception p0

    .line 163
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTint()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    return p0
.end method

.method public getViewAlpha()F
    .locals 0

    .line 243
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 122
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 248
    iput-object p2, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/ScrimView;Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    return-void
.end method

.method public setTint(I)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTint(IZ)V

    return-void
.end method

.method public setTint(IZ)V
    .locals 1

    .line 172
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/ScrimView;IZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewAlpha(F)V
    .locals 2

    .line 227
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/ScrimView;F)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alpha cannot be NaN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
