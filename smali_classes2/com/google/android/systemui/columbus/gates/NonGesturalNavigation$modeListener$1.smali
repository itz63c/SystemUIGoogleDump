.class final Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation$modeListener$1;
.super Ljava/lang/Object;
.source "NonGesturalNavigation.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;-><init>(Landroid/content/Context;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation$modeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation$modeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->access$setCurrentModeIsGestural$p(Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Z)V

    .line 20
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation$modeListener$1;->this$0:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;)V

    return-void
.end method
