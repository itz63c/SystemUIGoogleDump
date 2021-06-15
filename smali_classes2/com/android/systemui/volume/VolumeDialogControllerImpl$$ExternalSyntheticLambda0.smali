.class public final synthetic Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->$r8$lambda$uo43of2q6pa_MBdHzhYiLsTU95g(Lcom/android/systemui/volume/VolumeDialogControllerImpl;ILdagger/Lazy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
