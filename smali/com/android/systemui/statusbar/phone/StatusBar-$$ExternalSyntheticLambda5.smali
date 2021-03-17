.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar-$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$Is2kP5ShBC_x9GWvkRHS29Yo3-s(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
