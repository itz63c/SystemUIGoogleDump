.class public Lcom/android/systemui/biometrics/UdfpsEnrollViewController;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "UdfpsEnrollViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/biometrics/UdfpsAnimationViewController<",
        "Lcom/android/systemui/biometrics/UdfpsEnrollView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field private final mEnrollHelperListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

.field private final mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    .line 89
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelperListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    .line 43
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    sget p3, Lcom/android/systemui/R$id;->progress_bar:I

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsProgressBar;

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollView;->setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)Lcom/android/systemui/biometrics/UdfpsProgressBar;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getPaddingX()I
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getPaddingY()I
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsEnrollViewController"

    return-object p0
.end method

.method public getTouchTranslation()Landroid/graphics/PointF;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method protected onViewAttached()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->shouldShowProgressBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mProgressBar:Lcom/android/systemui/biometrics/UdfpsProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelperListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->setListener(Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;)V

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->setListener(Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;)V

    return-void
.end method
