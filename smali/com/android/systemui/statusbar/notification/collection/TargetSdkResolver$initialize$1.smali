.class public final Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;
.super Ljava/lang/Object;
.source "TargetSdkResolver.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->initialize(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sbn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->access$resolveNotificationSdk(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    return-void
.end method
