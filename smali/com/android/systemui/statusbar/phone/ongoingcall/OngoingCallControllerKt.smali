.class public final Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;
.super Ljava/lang/Object;
.source "OngoingCallController.kt"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OngoingCallController"

    const/4 v1, 0x3

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;->DEBUG:Z

    return-void
.end method

.method public static final synthetic access$getDEBUG$p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$isOngoingCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallControllerKt;->isOngoingCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method private static final isOngoingCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v0, Landroid/app/Notification$CallStyle;

    .line 236
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.template"

    .line 237
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "android.callType"

    .line 238
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
