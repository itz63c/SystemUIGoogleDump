.class Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 3

    .line 118
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$500(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    .line 119
    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result p0

    .line 118
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText(ILandroid/app/AlarmManager$AlarmClockInfo;ZZ)V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 3

    .line 112
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    invoke-static {v2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeaderController;

    .line 113
    invoke-static {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->access$300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z

    move-result p0

    .line 112
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText(ILandroid/app/AlarmManager$AlarmClockInfo;ZZ)V

    return-void
.end method
