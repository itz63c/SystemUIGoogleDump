.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda25;->f$1:Landroid/app/PendingIntent;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$UBg4Jhj3h_q8epaOEqa-l2fycvQ(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    return-void
.end method
