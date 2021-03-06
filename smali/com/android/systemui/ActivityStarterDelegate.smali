.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarter:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5J_m7B3vN4ny_pnk5yNJjnOUpnY(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6t-LSiD24UE4d-3HlFYy4ZUs6FY(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CBqVSpB7Mel0xqOPaF4g4pe1ZNA(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FBf0zedluqDHJZZwHcw2AxX0srs(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IkKGKxLeYHS00OynnrM04UpHtAg(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$8(Landroid/app/PendingIntent;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWI5QNhmH3htnQ4jVMnn9BMijy4(Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postQSRunnableDismissingKeyguard$9(Ljava/lang/Runnable;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LrkbIBu2iB-G8dw47-gZiZyJU-c(Landroid/content/Intent;ILdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$7(Landroid/content/Intent;ILdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WZbjjqE3Qdzk_2xCW6osbVH5ox8(Landroid/content/Intent;ZZLdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$5(Landroid/content/Intent;ZZLdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qWrTGuZPXVMR7t2Q97EQ03ROSUg(Landroid/content/Intent;ZZILdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$3(Landroid/content/Intent;ZZILdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCgsYFY7KExFjHN5wXohyfAVPOI(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$dismissKeyguardThenExecute$10(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xEWt6dJ8qi7TQsTmtWM6lcTzSFo(Landroid/content/Intent;ZLdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$4(Landroid/content/Intent;ZLdagger/Lazy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    return-void
.end method

.method private static synthetic lambda$dismissKeyguardThenExecute$10(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V
    .locals 0

    .line 114
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static synthetic lambda$postQSRunnableDismissingKeyguard$9(Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    .line 108
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$7(Landroid/content/Intent;ILdagger/Lazy;)V
    .locals 0

    .line 96
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$8(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    .line 102
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$startActivity$3(Landroid/content/Intent;ZZILdagger/Lazy;)V
    .locals 0

    .line 72
    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method private static synthetic lambda$startActivity$4(Landroid/content/Intent;ZLdagger/Lazy;)V
    .locals 0

    .line 78
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private static synthetic lambda$startActivity$5(Landroid/content/Intent;ZZLdagger/Lazy;)V
    .locals 0

    .line 84
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private static synthetic lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V
    .locals 0

    .line 90
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    .line 49
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    .line 56
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V
    .locals 0

    .line 64
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    .line 114
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda4;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda5;-><init>(Landroid/content/Intent;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda6;-><init>(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;ZZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda8;-><init>(Landroid/content/Intent;ZZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate-$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
