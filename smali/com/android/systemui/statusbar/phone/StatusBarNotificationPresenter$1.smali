.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->lambda$new$0(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;ZI)V
    .locals 1

    .line 189
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 189
    invoke-static {p2, v0, p1, p4}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$800(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;I)V

    if-eqz p3, :cond_0

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    :cond_0
    return-void
.end method
