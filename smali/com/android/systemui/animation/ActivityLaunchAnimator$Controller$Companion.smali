.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    invoke-direct {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->$$INSTANCE:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromView(Landroid/view/View;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 0

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;)V

    return-object p0
.end method
