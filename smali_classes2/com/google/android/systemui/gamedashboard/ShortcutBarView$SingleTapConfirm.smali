.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$SingleTapConfirm;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ShortcutBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleTapConfirm"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 519
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$SingleTapConfirm;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
