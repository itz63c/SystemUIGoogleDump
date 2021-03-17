.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialog-$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog-$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog-$$ExternalSyntheticLambda3;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog-$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog-$$ExternalSyntheticLambda3;->f$1:Landroid/content/SharedPreferences;

    check-cast p1, Lcom/android/systemui/controls/controller/SeedResponse;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->$r8$lambda$ez1VeCI0dtcXLmcxM2xe9sSc6t8(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/controller/SeedResponse;)V

    return-void
.end method
