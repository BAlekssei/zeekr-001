.class public Lcom/sensorsdata/analytics/android/sdk/ServerUrl;
.super Ljava/lang/Object;
.source "ServerUrl.java"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private project:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->url:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 37
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->baseUrl:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    .line 41
    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    .line 42
    const-string v1, "project"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v1, "default"

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const-string v1, "default"

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 53
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    goto :goto_2

    .line 46
    :goto_1
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    const-string v2, ""

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    .line 49
    :cond_4
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50
    const-string v2, "default"

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    .line 52
    :cond_5
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 53
    const-string v2, ""

    iput-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    .line 55
    :cond_6
    throw v1

    .line 57
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public check(Lcom/sensorsdata/analytics/android/sdk/ServerUrl;)Z
    .locals 2
    .param p1, "serverUrl"    # Lcom/sensorsdata/analytics/android/sdk/ServerUrl;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->getProject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 98
    :cond_0
    nop

    .line 99
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "pathPrefix":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "pathPrefix":I
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",baseUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",project="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->project:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ServerUrl;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
