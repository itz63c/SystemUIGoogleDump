.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter-$$ExternalSyntheticLambda7;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->$r8$lambda$tP0FpGEXTBo_KLY63haFuAb83r4(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method
