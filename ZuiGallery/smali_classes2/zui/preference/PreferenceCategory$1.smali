.class Lzui/preference/PreferenceCategory$1;
.super Ljava/lang/Object;
.source "PreferenceCategory.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/preference/PreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lzui/preference/PreferenceCategory;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lzui/preference/PreferenceCategory$1;->this$0:Lzui/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 44
    iget-object v0, p0, Lzui/preference/PreferenceCategory$1;->this$0:Lzui/preference/PreferenceCategory;

    invoke-static {v0}, Lzui/preference/PreferenceCategory;->access$000(Lzui/preference/PreferenceCategory;)V

    return-void
.end method
