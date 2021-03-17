.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$1:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$2:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda26;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$2KFRdHrNwlS69s-xkcfVcf0Ldlw(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
