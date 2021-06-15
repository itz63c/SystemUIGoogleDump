.class Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;
.super Ljava/lang/Object;
.source "UdfpsEnrollViewController.java"

# interfaces
.implements Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsEnrollViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentProgress(II)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->access$000(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)Lcom/android/systemui/biometrics/UdfpsProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr p2, v1

    sub-int p1, p2, p1

    const/4 v2, 0x0

    .line 94
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/2addr v0, p1

    div-int/2addr v0, p2

    .line 96
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->access$000(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)Lcom/android/systemui/biometrics/UdfpsProgressBar;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method
