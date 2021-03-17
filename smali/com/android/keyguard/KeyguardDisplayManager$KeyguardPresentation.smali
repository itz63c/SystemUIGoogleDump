.class final Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
.super Landroid/app/Presentation;
.source "KeyguardDisplayManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyguardPresentation"
.end annotation


# instance fields
.field private mClock:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field private final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field private mMarginLeft:I

.field private mMarginTop:I

.field mMoveTextRunnable:Ljava/lang/Runnable;

.field private mUsableHeight:I

.field private mUsableWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;)V
    .locals 2

    .line 281
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_KeyguardPresentation:I

    const/16 v1, 0x7d9

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    .line 268
    new-instance p2, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    .line 283
    iput-object p3, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    const/4 p2, 0x0

    .line 284
    invoke-virtual {p0, p2}, Landroid/app/Presentation;->setCancelable(Z)V

    .line 285
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 257
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 257
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 257
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)Landroid/view/View;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;)I
    .locals 0

    .line 257
    iget p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    return p0
.end method

.method private updateBounds()V
    .locals 2

    .line 335
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableWidth:I

    .line 338
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x50

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mUsableHeight:I

    .line 339
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    div-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginLeft:I

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    div-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMarginTop:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 306
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->updateBounds()V

    .line 310
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->keyguard_presentation:I

    const/4 v1, 0x0

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 310
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 314
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 318
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 319
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 320
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 322
    sget p1, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 328
    invoke-virtual {p0, p1}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-interface {v0, p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    move-result-object p1

    .line 329
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardClockSwitchController()Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 331
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mClock:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->mMoveTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayChanged()V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->updateBounds()V

    .line 301
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
