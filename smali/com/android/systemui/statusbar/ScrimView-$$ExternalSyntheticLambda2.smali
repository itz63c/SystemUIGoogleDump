.class public final synthetic Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ScrimView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ScrimView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/ScrimView;

    iput p2, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ScrimView-$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/ScrimView;->$r8$lambda$asalh6ViLhUQzCBFLbnEF3q0MC0(Lcom/android/systemui/statusbar/ScrimView;IZ)V

    return-void
.end method
