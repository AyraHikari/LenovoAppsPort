.class public Lcom/zui/gallery/filtershow/data/UserPresetsManager;
.super Ljava/lang/Object;
.source "UserPresetsManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;,
        Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x4

.field private static final LOAD:I = 0x1

.field private static final LOAD_RESULT:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "UserPresetsManager"

.field private static final SAVE:I = 0x3

.field private static final UPDATE:I = 0x5


# instance fields
.field private mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mProcessingHandler:Landroid/os/Handler;

.field private mRepresentations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultHandler:Landroid/os/Handler;

.field private mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/zui/gallery/filtershow/data/UserPresetsManager$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/data/UserPresetsManager$1;-><init>(Lcom/zui/gallery/filtershow/data/UserPresetsManager;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mResultHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 63
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "UserPresetsManager"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    .line 67
    new-instance p1, Lcom/zui/gallery/filtershow/data/FilterStackSource;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p1, v0}, Lcom/zui/gallery/filtershow/data/FilterStackSource;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;

    .line 68
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/data/FilterStackSource;->open()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/data/UserPresetsManager;Landroid/os/Message;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->resultLoad(Landroid/os/Message;)V

    return-void
.end method

.method private processDelete(Landroid/os/Message;)V
    .locals 1

    .line 139
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 140
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/data/FilterStackSource;->removeStack(I)Z

    .line 141
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processLoad()V

    return-void
.end method

.method private processLoad()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/data/FilterStackSource;->getAllUserPresets()Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mResultHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 122
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private processSave(Landroid/os/Message;)V
    .locals 2

    .line 133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;

    .line 134
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;

    iget-object v1, p1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;->json:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/data/FilterStackSource;->insertStack(Ljava/lang/String;[B)Z

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processLoad()V

    return-void
.end method

.method private processUpdate(Landroid/os/Message;)V
    .locals 2

    .line 145
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;

    iget v1, p1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;->id:I

    iget-object p1, p1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/filtershow/data/FilterStackSource;->updateStackName(ILjava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processLoad()V

    return-void
.end method

.method private resultLoad(Landroid/os/Message;)V
    .locals 0

    .line 127
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mRepresentations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mUserPresets:Lcom/zui/gallery/filtershow/data/FilterStackSource;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/data/FilterStackSource;->close()V

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public delete(I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 101
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 102
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getRepresentations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mRepresentations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processUpdate(Landroid/os/Message;)V

    return v1

    .line 52
    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processDelete(Landroid/os/Message;)V

    return v1

    .line 49
    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processSave(Landroid/os/Message;)V

    return v1

    .line 46
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->processLoad()V

    return v1
.end method

.method public load()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public save(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Ljava/lang/String;)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;-><init>()V

    const-string v2, "Saved"

    .line 93
    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;->json:Ljava/lang/String;

    .line 94
    iput-object p2, v1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$SaveOperation;->name:Ljava/lang/String;

    .line 95
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public update(Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->getId()I

    move-result v2

    iput v2, v1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;->id:I

    .line 114
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/zui/gallery/filtershow/data/UserPresetsManager$UpdateOperation;->name:Ljava/lang/String;

    .line 115
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/zui/gallery/filtershow/data/UserPresetsManager;->mProcessingHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
