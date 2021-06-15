.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/view/Display$Mode;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/Display$Mode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/Display$Mode;

    check-cast p1, Landroid/view/Display$Mode;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->$r8$lambda$fEqQB4HajyV7qytPhI-kXM4Jfz4(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p0

    return p0
.end method
