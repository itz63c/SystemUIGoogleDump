.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$2:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda8;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$r5JEw9vVEo1tok-9IOgCokL6mT4(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;ZZ)Z

    move-result p0

    return p0
.end method
