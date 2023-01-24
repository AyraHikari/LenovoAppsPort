.class public Lcom/zui/gallery/app/MuteVideo;
.super Ljava/lang/Object;
.source "MuteVideo.java"


# instance fields
.field final TIME_STAMP_NAME:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mDstFileInfo:Lcom/zui/gallery/util/SaveVideoFileInfo;

.field private mFilePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mMuteProgress:Landroid/app/ProgressDialog;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mFilePath:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mUri:Landroid/net/Uri;

    .line 40
    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mDstFileInfo:Lcom/zui/gallery/util/SaveVideoFileInfo;

    .line 41
    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mHandler:Landroid/os/Handler;

    const-string v0, "\'MUTE\'_yyyyMMdd_HHmmss"

    .line 44
    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->TIME_STAMP_NAME:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/zui/gallery/app/MuteVideo;->mUri:Landroid/net/Uri;

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/app/MuteVideo;->mFilePath:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/MuteVideo;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/app/MuteVideo;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/MuteVideo;)Lcom/zui/gallery/util/SaveVideoFileInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/app/MuteVideo;->mDstFileInfo:Lcom/zui/gallery/util/SaveVideoFileInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/Activity;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/MuteVideo;)Landroid/net/Uri;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/app/MuteVideo;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/MuteVideo;)Landroid/app/ProgressDialog;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/MuteVideo;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/MuteVideo;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/zui/gallery/app/MuteVideo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private showProgressDialog()V
    .locals 3

    .line 97
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    .line 98
    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001b8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1001dc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 101
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mMuteProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public muteInBackground()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/MuteVideo;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/gallery/app/MuteVideo;->mActivity:Landroid/app/Activity;

    const v3, 0x7f10014f

    .line 55
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'MUTE\'_yyyyMMdd_HHmmss"

    .line 53
    invoke-static {v3, v0, v1, v2}, Lcom/zui/gallery/util/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/util/SaveVideoFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/MuteVideo;->mDstFileInfo:Lcom/zui/gallery/util/SaveVideoFileInfo;

    .line 57
    invoke-direct {p0}, Lcom/zui/gallery/app/MuteVideo;->showProgressDialog()V

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/app/MuteVideo$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/MuteVideo$1;-><init>(Lcom/zui/gallery/app/MuteVideo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
