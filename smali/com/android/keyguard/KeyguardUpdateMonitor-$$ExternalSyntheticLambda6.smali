.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor-$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor-$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor-$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->$r8$lambda$WVe6vji7-rrngCErC_w2bHl6rNs(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method
