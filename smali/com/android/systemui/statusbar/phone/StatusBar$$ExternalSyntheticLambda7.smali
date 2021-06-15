.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Runnable;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda7;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$3MrJuNXmdDFVJa9UDXevBj_mR-Y(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;Z)Z

    move-result p0

    return p0
.end method
