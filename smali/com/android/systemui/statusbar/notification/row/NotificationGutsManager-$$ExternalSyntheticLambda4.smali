.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager-$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager-$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager-$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onHeightChanged(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager-$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager-$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->$r8$lambda$gLRLoBOLFDPu18EPO6b9UZH5Mss(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    return-void
.end method
