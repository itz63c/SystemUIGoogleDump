.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/systemui/plugins/ActivityStarter$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$4:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$2:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$3:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda28;->f$4:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$Xy5on3PNNScXaTZDIn3gX8WXzxI(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;IZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method
