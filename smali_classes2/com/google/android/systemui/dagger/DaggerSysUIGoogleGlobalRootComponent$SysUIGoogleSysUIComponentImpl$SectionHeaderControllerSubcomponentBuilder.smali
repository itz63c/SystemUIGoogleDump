.class final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSysUIGoogleGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SectionHeaderControllerSubcomponentBuilder"
.end annotation


# instance fields
.field private clickIntentAction:Ljava/lang/String;

.field private headerText:Ljava/lang/Integer;

.field private nodeLabel:Ljava/lang/String;

.field final synthetic this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)V
    .locals 0

    .line 4148
    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$1;)V
    .locals 0

    .line 4148
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 8

    .line 4175
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4176
    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4177
    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    invoke-static {v1, v0}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4178
    new-instance v0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;

    iget-object v3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->this$1:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;

    iget-object v4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;-><init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    .locals 0

    .line 4148
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction(Ljava/lang/String;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public clickIntentAction(Ljava/lang/String;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    .line 4169
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->clickIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    .locals 0

    .line 4148
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->headerText(I)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public headerText(I)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    .line 4163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->headerText:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    .locals 0

    .line 4148
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->nodeLabel(Ljava/lang/String;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public nodeLabel(Ljava/lang/String;)Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;
    .locals 0

    .line 4157
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$SectionHeaderControllerSubcomponentBuilder;->nodeLabel:Ljava/lang/String;

    return-object p0
.end method
