.class public final synthetic Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame-$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame-$$ExternalSyntheticLambda0;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame-$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame-$$ExternalSyntheticLambda0;->f$1:Landroid/view/MotionEvent;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->$r8$lambda$YIr8liK4PkiBuq8TF9EbKpCeYhs(Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
