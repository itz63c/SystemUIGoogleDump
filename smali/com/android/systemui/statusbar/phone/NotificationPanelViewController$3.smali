.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapRequired()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    sget v1, Lcom/android/systemui/R$string;->notification_tap_again:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->showTransientIndication(I)V

    .line 561
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/VibratorHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    return-void
.end method
