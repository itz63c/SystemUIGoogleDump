.class public abstract Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule;
.super Ljava/lang/Object;
.source "StatusBarViewModule.java"


# direct methods
.method public static getLockIcon(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    .line 45
    sget v0, Lcom/android/systemui/R$id;->lock_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object p0
.end method

.method public static getNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    return-object p0
.end method
