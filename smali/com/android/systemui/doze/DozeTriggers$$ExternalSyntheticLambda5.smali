.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Lcom/android/systemui/doze/DozeMachine$State;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    iput p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    iget v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda5;->f$3:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->$r8$lambda$WiruzVDvxjXlAu8Mae1TVHuu4GA(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;IZLjava/lang/Boolean;)V

    return-void
.end method
